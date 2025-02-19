install:
	poetry shell
	pip install pip --upgrade
	pip install tensorflow-macos
	pip install pystan==2.19.1.1
	pip install pandas
	pip install convertdate lunarcalendar holidays
	pip install prophet==1.0      
	pip install GDAL
	pip install torch==1.13.1
	poetry install
lint:
	poetry run pylint -d duplicate-code ./**/*.py
test: 
	poetry run python -m unittest discover -s tests -p "test_*.py"
run: install
	poetry run python ./main.py