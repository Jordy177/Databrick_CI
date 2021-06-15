import os
from setuptools import setup

root_path = os.path.dirname(os.path.realpath(__file__)).replace('\\install_scripts', '')


for filename in os.listdir(root_path + '\\distributions\\hello_world\\'):
    if filename == 'setup.py':
        print(filename)

        setup(
            name = 'hello_world'
            version = '0.8',
            author = 'Rabobank'
        )