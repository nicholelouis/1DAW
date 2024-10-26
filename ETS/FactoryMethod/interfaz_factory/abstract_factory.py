# abstract_factory.py
from abc import ABC, abstractmethod

class Button(ABC):
    @abstractmethod
    def render(self):
        pass

    @abstractmethod
    def on_click(self, function):
        pass

class TextBox(ABC):
    @abstractmethod
    def render(self):
        pass

    @abstractmethod
    def set_text(self, text):
        pass

class UIFactory(ABC):
    @abstractmethod
    def create_button(self) -> Button:
        pass

    @abstractmethod
    def create_textbox(self) -> TextBox:
        pass
