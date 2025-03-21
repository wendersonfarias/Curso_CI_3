lint:
	docker run --rm -itv "$(CURDIR)":/app -w /app golangci/golangci-lint golangci-lint  run controllers/ database/ models/ routes/
	echo "Lint ok!"
test:
	docker compose exec app go test main_test.go
	echo "Testes ok!"

start:
	docker compose up -d

ci: start lint test