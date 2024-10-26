class WebSide:
    def __init__(self, url: str, header: str, footer: str, main: str) -> None:
        self.current_url = url
        self.header = header
        self.footer = footer
        self.main = main
        self.links = {}

    @staticmethod
    def is_valis_link(method): # Recibe un método
        def wrapper(self, *args, **kwargs): # Siempre va un self
            # suponiendo que esta en el primer elemento nominal osea el diccionario de **kwargs
            elemnt_id = kwargs['element_id'] # cogemos el valor de 'element_id' en el diccionario
            if elemnt_id in self.links:
                return method(self, *args, **kwargs) # Si esta en link lo devolvemos, Cuando lo retornamos siempre con self
            raise WebSideError(self.current_url, 'no') # si no, lanzamos el error
        return wrapper # Devuelve un método

    def add_link(self, url: str, element_id: str) -> None:
        self.links[element_id] = url

    @is_valis_link # Así se llama al decorador
    def click_link(self, elemnt_id: str):
        self.current_url = self.links[elemnt_id]


class WebSideError(Exception):
    BASE_MSG = 'Webside Error'
    def __init__(self, url: str, msg: str) -> None:
        if msg:
            self.msg = f'{WebSideError}: {msg}' # si hay mensaje devuelve el por defecto
        else:
            self.msg = WebSideError.BASE_MSG # si no solo el por defecto
        super().__init__(msg)
        self.url = url
    
    def __str__(self) -> str:
        return f'{self.msg} at {self.url}' # aqui es lo que devuelve 

    