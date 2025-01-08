G = \033[1;32m   # Green
Y = \033[1;33m   # Yellow
R = \033[0;31m   # Red
W = \033[1;37m   # White
NC = \033[0m     # No Color

# Variables
PYTHON := python3
PIP := pip3
TRAIN_SCRIPT := train.py
PREDICT_SCRIPT := predict.py
DATASET := dataset.csv
MODEL_FILE := model.json
BONUS_VISUALIZE_SCRIPT := bonus/visualize.py

# Default target
.DEFAULT_GOAL := help

# Help command
help:
	@echo "															"	
	@echo "$(W)  ███████╗████████╗     ██╗     ██╗███╗   ██╗███████╗ █████╗ ██████╗         ██████╗ ███████╗ ██████╗ ██████╗ ███████╗███████╗███████╗██╗ ██████╗ ███╗   ██╗$(RESET)"	
	@echo "$(W)  ██╔════╝╚══██╔══╝     ██║     ██║████╗  ██║██╔════╝██╔══██╗██╔══██╗        ██╔══██╗██╔════╝██╔════╝ ██╔══██╗██╔════╝██╔════╝██╔════╝██║██╔═══██╗████╗  ██║$(RESET)"	
	@echo "$(W)  █████╗     ██║        ██║     ██║██╔██╗ ██║█████╗  ███████║██████╔╝        ██████╔╝█████╗  ██║  ███╗██████╔╝█████╗  ███████╗███████╗██║██║   ██║██╔██╗ ██║$(RESET)"	
	@echo "$(W)  ██╔══╝     ██║        ██║     ██║██║╚██╗██║██╔══╝  ██╔══██║██╔══██╗        ██╔══██╗██╔══╝  ██║   ██║██╔══██╗██╔══╝  ╚════██║╚════██║██║██║   ██║██║╚██╗██║$(RESET)"	
	@echo "$(W)  ██║        ██║███████╗███████╗██║██║ ╚████║███████╗██║  ██║██║  ██║███████╗██║  ██║███████╗╚██████╔╝██║  ██║███████╗███████║███████║██║╚██████╔╝██║ ╚████║$(RESET)"	
	@echo "$(W)  ╚═╝        ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝$(RESET)"	
	@echo "$(w)            		 						      		  2025/01/08 - ismherna@student.42.fr - 42 Madrid - Ismael Hernández		$(RESET)"	
	@echo "						"                                                     
	@echo "Usage: make [target]"
	@echo "Available targets:"
	@echo "  install        Install dependencies"
	@echo "  train          Train the model using $(DATASET)"
	@echo "  predict        Predict price based on user input"
	@echo "  visualize      Visualize the regression line and data (bonus)"
	@echo "  clean          Remove generated files"

# Install dependencies
install:
	@$(PIP) install -r requirements.txt

# Train the model
train: $(TRAIN_SCRIPT) $(DATASET)
	@$(PYTHON) $(TRAIN_SCRIPT)

# Predict using the model
predict: $(PREDICT_SCRIPT) $(MODEL_FILE)
	@$(PYTHON) $(PREDICT_SCRIPT)

# Visualize data and regression line (bonus)
visualize: $(BONUS_VISUALIZE_SCRIPT) $(MODEL_FILE)
	@$(PYTHON) $(BONUS_VISUALIZE_SCRIPT)

# Clean generated files
clean:
	@rm -f $(MODEL_FILE)
	@echo "Cleaned generated files."

# Phony targets
.PHONY: help install train predict visualize clean
