class OrdineModel {
  int cod_ordine;
  String partenza;
  String destinazione;
  int quantita;
  int cod_pagamento;
  String CF;
  String stato;

  

  OrdineModel({this.cod_ordine, this.partenza, this.destinazione, this.quantita, this.cod_pagamento, this.CF, this.stato});

  OrdineModel.fromJson(Map<String, dynamic> json) {
    cod_ordine = json['cod_ordine'];
    partenza = json['partenza'];
    destinazione = json['destinazione'];
    quantita = json['quantita'];
    cod_pagamento = json['cod_pagamento'];
    CF = json['CF'];
    stato = json['stato'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cod_ordine'] = this.cod_ordine;
    data['partenza'] = this.partenza;
    data['destinazione'] = this.destinazione;
    data['quantita'] = this.quantita;
    data['cod_pagamento'] = this.cod_pagamento;
    data['CF'] = this.CF;
    data['stato'] = this.stato;
    return data;
  }
}