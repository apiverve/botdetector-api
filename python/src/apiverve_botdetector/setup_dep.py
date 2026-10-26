from setuptools import setup, find_packages

setup(
    name='apiverve_botdetector',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software. It matches against a database of known bots and adds heuristics that catch automated clients not in the database, returning the bot's category, reputation and a composite risk score. Useful for security, analytics, and access control.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/botdetector?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
