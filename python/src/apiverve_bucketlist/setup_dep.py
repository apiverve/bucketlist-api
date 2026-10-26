from setuptools import setup, find_packages

setup(
    name='apiverve_bucketlist',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Bucket List supplies a random bucket list idea for life goals, travel aspirations, and personal adventures. Call the endpoint with no parameters to receive a single activity suggestion.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/bucketlist?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
