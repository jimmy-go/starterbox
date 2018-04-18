
help:
	@echo "Available commands:"
	@echo "make install			Install dependencies."
	@echo "make test			Run tests."
	@echo "make coverage			Show coverage in html."
	@echo "make deploy			Execute deploy."
	@echo "make clean			Clean build files."

install:
	@echo "Make: Install"
	./scripts/install.sh

.PHONY: test
test:
	@echo "Make: Test"
	./scripts/test.sh

coverage:
	@echo "Make: Coverage"
	./scripts/cover.sh

deploy:
	@echo "Make: Deploy"
	./scripts/deploy.sh

clean:
	@echo "Make: Clean"
	./scripts/clean.sh
