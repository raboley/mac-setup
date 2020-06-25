export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

AKS=cat-dev-rab-aks
alias aks="az aks get-credentials --resource-group $AKS --name $AKS --overwrite-existing && az aks browse --resource-group $AKS --name $AKS"