class Document {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  Document(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<Document> doc_list = [
    Document(
        "Semana1",
        "https://drive.google.com/file/d/1qFqy-toQQ2G7sXaYMDYzyc8rn8eaTHcd/view",
        "12-01-2023",
        2),
    Document(
        "Semana 2",
        "https://alternativascc.org/wp-content/uploads/2018/05/cosecha-y-postcosecha_web-1.pdf",
        "12-01-2023",
        23),
    Document(
        "Semana 4",
        "https://drive.google.com/file/d/1qFqy-toQQ2G7sXaYMDYzyc8rn8eaTHcd/view",
        "12-01-2023",
        45),
    Document("Semana 4", "http://profesores.fi-b.unam.mx/cintia/Manualhtml.pdf",
        "13-04-2023", 2),
    Document(
        "Semana 5",
        "https://www.um.es/docencia/barzana/DAWEB/2017-18/daweb-NodeJS.pdf",
        "15-01-2023",
        42),
    Document("Semana 5", "http://bbeltran.cs.buap.mx/CSS.pdf", "15-01-2023", 12)
  ];
}
