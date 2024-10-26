# concrete_factory.py
from abstract_factory import Button, TextBox, UIFactory

class WindowsButton(Button):
    def render(self):
        print("Render a button in Windows style")

    def on_click(self, function):
        print("Bind a function to a Windows button click")

class WindowsTextBox(TextBox):
    def render(self):
        print("Render a text box in Windows style")

    def set_text(self, text):
        print(f"Set text in Windows text box: {text}")

class MacButton(Button):
    def render(self):
        print("Render a button in Mac style")

    def on_click(self, function):
        print("Bind a function to a Mac button click")

class MacTextBox(TextBox):
    def render(self):
        print("Render a text box in Mac style")

    def set_text(self, text):
        print(f"Set text in Mac text box: {text}")

class WindowsFactory(UIFactory):
    def create_button(self) -> Button:
        return WindowsButton()

    def create_textbox(self) -> TextBox:
        return WindowsTextBox()

class MacFactory(UIFactory):
    def create_button(self) -> Button:
        return MacButton()

    def create_textbox(self) -> TextBox:
        return MacTextBox()
