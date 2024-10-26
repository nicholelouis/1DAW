from __future__ import annotations


class Date:
    DAYS = ['DOMINGO', 'LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SABADO']
    MONTHS = ['ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']
    DAYS_IN_MONTH  = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    def __init__(self, day: int, month: int, year: int):
        self.day = day if 1 <= day <= 31 else 1
        self.month = month if 1 <= month <= 12 else 1
        self.year = year if 1900 <= year <= 2050 else 1900

    @staticmethod
    def is_leap_year(year: int) -> bool:
        return year % 4 == 0 and year % 100 != 0 or year % 400 == 0

    @staticmethod
    def days_in_month(month: int, year: int) -> int:
        if month == 2 and Date.is_leap_year(year):
            return 29 
        return Date.DAYS_IN_MONTH[month -1]
        
    def days_in_years(self, start: int, lim: int):
         total_years = lim - start
         for i in range(total_years):
            year = lim - i
            if Date.is_leap_year(year):
                yield 366
            else:
                yield 365

    def get_delta_days(self) -> int:
        days = 0
        days += sum(Date.days_in_month(m, self.year) for m in range(1, self.month))
        days += sum(self.days_in_years(1900, self.year))
        return days
    
    @property
    def weekday(self) -> int:
        total_days = Date.get_delta_days(self)
        weekday = total_days % 7 + 1
        return weekday if weekday < 6 else 0

    @property
    def is_weekend(self) -> bool:
        return self.weekday in [0, 6]

    @property
    def short_date(self) -> str:
        '''02/09/2003'''
        return f'{self.day:02d}/{self.month:02d}/{self.year}'

    def __str__(self):
        '''MARTES 2 DE SEPTIEMBRE DE 2003'''
        return f'{self.DAYS[self.weekday]} {self.day} DE {self.MONTHS[self.month -1]} DE {self.year}'

    def __add__(self, days: int) -> Date:
        day = self.day + days
        month = self.month
        year = self.year
        while day > Date.days_in_month(month, year):
            month += 1
            day -= Date.days_in_month(month, year)
            if month > 12:
                year += 1
                month = 1
        return Date(day, month, year)
        
    def __sub__(self, other: Date | int) -> int | Date:
        '''Dos opciones:
        1) Restar una fecha a otra fecha -> Número de días
        2) Restar un número de días la fecha -> Nueva fecha'''
        if isinstance(other, Date):
            result =  (Date.get_delta_days(self) + self.day ) - (Date.get_delta_days(other) + other.day) -1

        elif isinstance(other, int):
            month = self.month
            year = self.year
            day = self.day
            while day - other <= 0:
                month -= 1
                other -= day
                if month == 0:
                    year -= 1
                    month = 12
                day = Date.days_in_month(month, year)
            day -= other
            result = Date(day, month, year)
        return result

    def __lt__(self, other: Date) -> bool:
        return (self.year, self.month, self.day) < (other.year, other.month, other.day)

    def __gt__(self, other: Date) -> bool:
        return (self.year, self.month, self.day) > (other.year, other.month, other.day)

    def __eq__(self, other: Date) -> bool:
        return self.year == other.year and self.month == other.month and self.day == other.day
