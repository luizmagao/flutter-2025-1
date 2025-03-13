## Resolução

**1. Crie um novo projeto Flutter**

- Abra um terminal na pasta onde você guarda repositórios;
- Rode o comando: flutter create -e flutter_reviews;
- Abra a pasta criada com o VS Code;

**2. Crie o modelo de “review” e alguns exemplos**

- Crie a pasta models em lib;
- Crie o arquivo reviews.dart em models;

```dart
class Review {
  String title;
  int stars;
  String review;
  DateTime date;

  Review({
    required this.title,
    required this.stars,
    required this.review,
    required this.date,
  });
}
```

- Crie a pasta `helpers` ou data em `lib`;
- Crie o arquivo `my_reviews.dart` com a função getRandomReview que retorna uma `Review` :

  - Na função, crie e preencha uma lista de reviews;
  - Retorne uma review aleatória dessa lista;
  - Não se esqueça de importar a biblioteca dart:math para conseguir usar o `Random().nextInt()`;

```dart
import 'dart:math';

Review getRandomReview() {
  List<Review> listReviews = [
    Review(
      title: "Severance",
      year: "2022",
      stars: 5,
      review: "Uma excelente série, bem dirigida, bem escrita e intrigante.",
      date: DateTime.now(),
    ),
    Review(
      title: "House of the Dragon",
      year: "2022",
      stars: 4,
      review:
          "Uma história do universo de George R. R. Martin que, apesar de boa, não consegue se livrar das inevitáveis comparações com Game of Thrones, sendo assim mais morna e menos cativante.",
      date: DateTime.now(),
    ),
  ];

  return listReviews[Random().nextInt(listReviews.length)];
}
```

**3. Crie uma tela que receba o modelo “review”**

- Crie uma nova pasta `ui` em `lib`;
- Crie um arquivo `review_screen.dart` em `ui`;
- Crie um `StatelessWidget` chamado `ReviewScreen`;
- Crie um atributo `final Review review` para a classe;
- Inicialize o atributo `review` no construtor da classe;
- Construa um `Scaffold` e uma `Column`;

```dart
class ReviewScreen extends StatelessWidget {
  final Review review;
  const ReviewScreen({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
```

**4. Crie os elementos na tela de review**

**- Sobre o título:**

- Adicione o widget `Text`;
- Use interpolação de string para mostrar nome e ano na mesma linha;
- Use o atributo `style` para definir um `TextStyle` com as informações abaixo:

```dart
//...
Text(
  "${review.title} (${review.year})",
  style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
),
```

**- Sobre as estrelas:**

- Crie uma Row logo após o Text do título;
- Use o método `.generate` de `List` para gerar uma lista `Widget` do tamanho de `review.stars`;

Construa, para cada iteração de .`generate` um `Text` contendo o emote de estrela. No windows, para acessar os emotes, pressione win + .;

```dart
//...
Row(
  children: List.generate(
    review.stars,
    (index) {
      return const Text("⭐");
    },
  ),
),
```

**- Sobre as demais informações**

- Para a data, utilize o método substring de `String` para pegar apenas os 10 primeiros caracteres;

- Adicione um Text que mostra a review;

```dart
//...
Text("Data: ${review.date.toString().substring(0, 10)}"),
Text(review.review),
```

**5. Configure a `main` para mostrar uma review**

- Remova todo conteúdo de exemplo que vem no arquivo `main.dart`;
- Crie um `StatelessWidget` chamado `ReviewApp`;
  - Sobreescreva o método `build` passando um `MaterialApp`;
  - Passe a `ReviewScreen` no parâmetro `home` de `MaterialApp`;
  - Chame `getRandomReview()` no parâmetro `home` de `ReviewScreen`;
- Por fim, crie um método void `main()` que chama a função `runApp` passando `ReviewApp`;
- Teste a aplicação;

```dart
void main() {
  runApp(const ReviewApp());
}

class ReviewApp extends StatelessWidget {
  const ReviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReviewScreen(
        review: getRandomReview(),
      ),
    );
  }
}
```
