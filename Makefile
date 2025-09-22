.PHONY: default help all clean

default: all

PARAM=199

help: ## Show the help prompt.
        @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all: aceto erlang forth haskell java lisp ocaml prolog python sml

aceto: ## Install and run aceto
	@echo "## Running aceto with $(PARAM)"
	python -m venv env
	./env/bin/pip install acetolang
	echo $(PARAM) | time ./env/bin/aceto collatz.act

erlang: ## Compile and run erlang code
	@echo "## Running erlang"
	erlc collatz.erl
	erl collatz.beam -- -eval "collatz:run_collatz($(PARAM))."
forth: ## Run forth code
	@echo "## Running forth"
	echo "$(PARAM) collatz bye" | time gforth collatz.fs

haskell: ## Run haskell code
	@echo "## Running haskell"
	time runghc collatz.hs $(PARAM)

java: ## Compile and run java code
	@echo "## Running java"
	javac *.java
	time java collatz_rec $(PARAM)
	time java collatz_iter $(PARAM)

lisp: ## Run lisp code
	@echo "## Running lisp"
	echo "(load \"collatz.lisp\") (collatz $(PARAM)) (bye)" | time clisp	
	time emacs --load collatz.lisp --eval "(collatz $(PARAM))(bye)" --batch

ocaml: ## Run ocaml code
	@echo "## Running ocaml"
	echo "collatz $(PARAM);; exit 0;; " | time ocaml -init collatz.ml 

# TODO poplog

prolog: ## Run prolog code
	@echo "## Running prolog"
	time swipl -l collatz.pl -g "collatz($(PARAM),X), halt."

python: ## Run python code
	@echo "## Running python"
	time python collatz_rec.py $(PARAM)
	time python collatz_iter.py $(PARAM)

sml : ## Run sml code
	@echo "## Running sml"
	echo "collatz $(PARAM);" | time smlnj collatz.sml  

clean: ## Remove all temporary files
	rm -Rfv env
	rm -f *.beam
	rm -f  *.class
