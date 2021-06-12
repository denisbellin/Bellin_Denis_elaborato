class ArticoloModel {
  int cod_articolo;
  String nome;
  String descrizione;
  int prezzo;
  

  

  ArticoloModel({this.cod_articolo, this.nome, this.descrizione, this.prezzo});

  ArticoloModel.fromJson(Map<String, dynamic> json) {
    cod_articolo = json['cod_articolo'];
    nome = json['nome'];
    descrizione = json['descrizione'];
    prezzo = json['prezzo'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cod_articolo'] = this.cod_articolo;
    data['nome'] = this.nome;
    data['descrizione'] = this.descrizione;
    data['prezzo'] = this.prezzo;
    return data;
  }
}