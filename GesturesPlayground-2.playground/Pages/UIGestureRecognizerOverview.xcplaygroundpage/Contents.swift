//: # Toques, pressões e gestos!
//: ## Visão Geral sobre UIGestureRecognizer
//: ---
//: ### Como era antes?
//: A detecção de gestos exigiu muito mais trabalho antes que os UIGestureRecognizer estivessem disponíveis. Se você quisesse detectar um *swipe*, por exemplo, precisava registrar notificações para *touchesBegan*, *touchesMoved* e *touchesEnded* em cada toque em um UIView.
//: ### E qual era o problema?
//: Deixar isso a cargo de cada desenvolvedor gerava bugs e inconsistências sutis nos aplicativos, já que cada programador escrevia um código ligeiramente diferente para detectar esses toques.
//: ### A chegada do UIGestureRecognizer
//: Foi no iOS 3.0 que a Apple lançou a classe UIGestureRecognizer. Com ela, eles forneciam uma implementação padrão para detectar gestos comuns, como toques, pinças, rotações, *swipes*, *pans* e toques longos. Usá-los não apenas economiza uma tonelada de código, mas também faz com que seus aplicativos funcionem corretamente. Obviamente, você ainda pode usar as notificações por toque antigas, se o seu aplicativo as exigir.
//:
//: [Próximo](@next)
