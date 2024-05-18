import pyperclip
import qrcode

MAX_LENGTH: int = 2953


def main() -> None:
    try:
        code = pyperclip.paste()

        if type(code) is not str:
            raise TypeError(f"Expected str, got {type(code)}")
        elif not code:
            raise ValueError("Clipboard is empty.")
        elif len(code) > MAX_LENGTH:
            raise ValueError("Content too long for QR code.")

        qrcode.make(code).show()
    except UnicodeDecodeError:
        print("Error: The content of the clipboard could not be decoded.")
    except Exception as e:
        print(f"Error: {e}")


if __name__ == "__main__":
    main()
