# main.py
from concrete_factory import WindowsFactory, MacFactory
from abstract_factory import UIFactory

def client_code(factory: UIFactory):
    button = factory.create_button()
    textbox = factory.create_textbox()
    button.render()
    button.on_click(lambda: print("Button clicked"))
    textbox.render()
    textbox.set_text("Hello, World!")

if __name__ == "__main__":
    print("App: Launched with WindowsFactory.")
    client_code(WindowsFactory())

    print("\nApp: Launched with MacFactory.")
    client_code(MacFactory())
