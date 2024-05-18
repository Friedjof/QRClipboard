from setuptools import setup, find_packages

setup(
    name='QRClipboard',
    version='0.1',
    packages=find_packages(),
    install_requires=[
        'pyperclip',
        'qrcode[pil]'
    ],
    entry_points={
        'console_scripts': [
            'qrclip=QRClipboard.main:main',
        ],
    },
    author='Friedjof Noweck',
    author_email='git@noweck.info',
    description='This script reads the content of the clipboard and displays it as a QR code.',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/friedjof/QRClipboard',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
