import pyperclip
import qrcode


def main():
    qrcode.make(pyperclip.paste()).show()
