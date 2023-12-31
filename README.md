# Sistem API with Laravel Passport

## Installation
Setelah memasuki proojek maka dapat melakukan update dengan composer

```sh
Composer update
```
## EndPoint Get Tampil Data User
Endpoint
```sh
 Get http://127.0.0.1:8000/api/datauser
```

Contoh Respon Gagal
```sh
{
    "error": "Unauthorised"
}
```
Contoh Respon Berhasil

```sh
 {
    "users": [
        {
            "id": 1,
            "name": "asadel",
            "email": "aziziasadel@gmail.com",
            "email_verified_at": null,
            "role": "Admin",
            "created_at": null,
            "updated_at": null
        }
    ]
}
```


## EndPoint Get Tampil CRUD
Endpoint
```sh
 Get http://127.0.0.1:8000/api/tampilcrud
```

Contoh Respon Gagal
```sh
{
    "error": "Unauthorised"
}
```
Contoh Respon Berhasil

```sh
 "crud": [
        {
            "id": 4,
            "users_id": 1,
            "title": "Hola Salam Justalk",
            "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid ipsam, aut quasi eveniet et laboriosam maxime tenetur tempore. Laudantium veritatis tempore, ex deleniti quis aliquam eveniet impedit pariatur corrupti aut!",
            "created_at": "2023-07-28T20:30:47.000000Z",
            "updated_at": "2023-07-28T21:23:17.000000Z"
        },
        {
            "id": 5,
            "users_id": 1,
            "title": "selamat datang Semuanya",
            "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid ipsam, aut quasi eveniet et laboriosam maxime tenetur tempore. Laudantium veritatis tempore, ex deleniti quis aliquam eveniet impedit pariatur corrupti aut!",
            "created_at": "2023-07-28T21:21:29.000000Z",
            "updated_at": "2023-07-28T21:21:29.000000Z"
        },
        {
            "id": 6,
            "users_id": 1,
            "title": "selamat datang Semuanya",
            "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid ipsam, aut quasi eveniet et laboriosam maxime tenetur tempore. Laudantium veritatis tempore, ex deleniti quis aliquam eveniet impedit pariatur corrupti aut!",
            "created_at": "2023-07-28T21:22:15.000000Z",
            "updated_at": "2023-07-28T21:22:15.000000Z"
        }
    ]
```

## Contoh Request CRUD

Tambah CRUD
```sh
    
    Post http://127.0.0.1:8000/api/tambahcrud
    Authorization :
    Bearer 
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OWMwYmYwOC1lY2E1LTRlMTktYWIwMi1mYjAzMjM4MGUwYzAiLCJqdGkiOiJhOTQ3MTFlZTBkMmEzM2E0YTg4NTljYmY2Y2I4YTU1MDE4MTZjZjk3YTNlNGRkYTdmMmY2ODQ2YjdmNzkxYzdlMTQ2NGI4OThkZjYyZjUzNyIsImlhdCI6MTY5MDU5MDYwMy40NTQzNTYsIm5iZiI6MTY5MDU5MDYwMy40NTQzNTgsImV4cCI6MTcyMjIxMzAwMy4zNjM4Miwic3ViIjoiMSIsInNjb3BlcyI6W119.Kxl8UBp0p8jgS-kWM6ItB5GkxtVR8xD60icy1ITKY_iS04oj8mlsPfjSoSMZwTFQQPYmBljKXAM-m-0uAFTMs9QJnvPt2nWeTr-Ib3BHN-WNTsIVbhD6GxrCSq1L7gTExQ1w-dou1y3ZcFOhmG-2HkeSx6TD3Sh-z3SfZdIquDjIMdOk33ZjKqqrZo0oV7RO4J8ZpcECn5cciAbGK1fb4PaWXiRL_RBCT0HcKX25ekp4T5KwOyaI7_B3Wfoazd3Mra0PL0Cn39ekbOGkRl5MyqIpDiobynBm3r60fPs7qOs670QTBn8Q8MK7vHvKoVvBvTwsGcj3xkMWTkIfOIGxvn9B6QWrP_e2t34FxyLaFa_Y2a-TYnn5Z6q1rcTxJDuwRefLeOf6jeR7pfcA1fsfbUwmjRmXpD35Qri39fUh9BwAriVZqH6_2fA7HFAGKawEgtHRGPWQfhygjdpEfg7srsFBcmo0Tq-4QN_sfW80Av_JTYSEJ4NN8js7v2kmtCP3KfUDhENkk_zPk-fCC1JJnFDOw4eAacIzHawKcAG84Pl29JoPzvWxAxPsd2DtD6oP2K2tzVvail8tUWb0GXlvjYQcSm9gUV_TIZ7CulYXBOfsrDNqG_XEQMKqTjGj14kuJsyC5vtNaOJNR07_KuHgAtyE4DUhdvbw1_DEzggm8kI
```

Contoh Respon Gagal
```sh
    {
    "users_id": [
        "The users id field is required."
    ],
    "tittle": [
        "The tittle field is required."
    ]
}
   
```

Contoh Respon Berhasil
```sh
  {
    "0": "sukses.",
    "crud": {
        "id": 7,
        "title": "Laravel Passport",
        "body": "Berikut Penjelasan laravel Passport"
    },
    "users": {
        "id": 1,
        "name": "asadel",
        "email": "aziziasadel@gmail.com"
    }
}
   
```


Edit CRUD
```sh
    
    Post http://127.0.0.1:8000/api/editcrud/id
    Authorization :
    Bearer 
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OWMwYmYwOC1lY2E1LTRlMTktYWIwMi1mYjAzMjM4MGUwYzAiLCJqdGkiOiJhOTQ3MTFlZTBkMmEzM2E0YTg4NTljYmY2Y2I4YTU1MDE4MTZjZjk3YTNlNGRkYTdmMmY2ODQ2YjdmNzkxYzdlMTQ2NGI4OThkZjYyZjUzNyIsImlhdCI6MTY5MDU5MDYwMy40NTQzNTYsIm5iZiI6MTY5MDU5MDYwMy40NTQzNTgsImV4cCI6MTcyMjIxMzAwMy4zNjM4Miwic3ViIjoiMSIsInNjb3BlcyI6W119.Kxl8UBp0p8jgS-kWM6ItB5GkxtVR8xD60icy1ITKY_iS04oj8mlsPfjSoSMZwTFQQPYmBljKXAM-m-0uAFTMs9QJnvPt2nWeTr-Ib3BHN-WNTsIVbhD6GxrCSq1L7gTExQ1w-dou1y3ZcFOhmG-2HkeSx6TD3Sh-z3SfZdIquDjIMdOk33ZjKqqrZo0oV7RO4J8ZpcECn5cciAbGK1fb4PaWXiRL_RBCT0HcKX25ekp4T5KwOyaI7_B3Wfoazd3Mra0PL0Cn39ekbOGkRl5MyqIpDiobynBm3r60fPs7qOs670QTBn8Q8MK7vHvKoVvBvTwsGcj3xkMWTkIfOIGxvn9B6QWrP_e2t34FxyLaFa_Y2a-TYnn5Z6q1rcTxJDuwRefLeOf6jeR7pfcA1fsfbUwmjRmXpD35Qri39fUh9BwAriVZqH6_2fA7HFAGKawEgtHRGPWQfhygjdpEfg7srsFBcmo0Tq-4QN_sfW80Av_JTYSEJ4NN8js7v2kmtCP3KfUDhENkk_zPk-fCC1JJnFDOw4eAacIzHawKcAG84Pl29JoPzvWxAxPsd2DtD6oP2K2tzVvail8tUWb0GXlvjYQcSm9gUV_TIZ7CulYXBOfsrDNqG_XEQMKqTjGj14kuJsyC5vtNaOJNR07_KuHgAtyE4DUhdvbw1_DEzggm8kI
```

Contoh Respon Gagal
```sh
    {
    "users_id": [
        "The users id field is required."
    ],
    "tittle": [
        "The tittle field is required."
    ]
}
   
```

Contoh Respon Berhasil
```sh
  {
    "0": "sukses.",
    "crud": {
        "id": 7,
        "title": "Tutorial Belajar Laravel Passport ",
        "body": "Berikut Penjelasan laravel Passport"
    },
    "users": {
        "id": 1,
        "name": "asadel",
        "email": "aziziasadel@gmail.com"
    }
}
```
  Hapus CRUD 
```sh
 
   Delete  http://127.0.0.1:8000/api/crud/id
    Authorization :
    Bearer 
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OWMwYmYwOC1lY2E1LTRlMTktYWIwMi1mYjAzMjM4MGUwYzAiLCJqdGkiOiJhOTQ3MTFlZTBkMmEzM2E0YTg4NTljYmY2Y2I4YTU1MDE4MTZjZjk3YTNlNGRkYTdmMmY2ODQ2YjdmNzkxYzdlMTQ2NGI4OThkZjYyZjUzNyIsImlhdCI6MTY5MDU5MDYwMy40NTQzNTYsIm5iZiI6MTY5MDU5MDYwMy40NTQzNTgsImV4cCI6MTcyMjIxMzAwMy4zNjM4Miwic3ViIjoiMSIsInNjb3BlcyI6W119.Kxl8UBp0p8jgS-kWM6ItB5GkxtVR8xD60icy1ITKY_iS04oj8mlsPfjSoSMZwTFQQPYmBljKXAM-m-0uAFTMs9QJnvPt2nWeTr-Ib3BHN-WNTsIVbhD6GxrCSq1L7gTExQ1w-dou1y3ZcFOhmG-2HkeSx6TD3Sh-z3SfZdIquDjIMdOk33ZjKqqrZo0oV7RO4J8ZpcECn5cciAbGK1fb4PaWXiRL_RBCT0HcKX25ekp4T5KwOyaI7_B3Wfoazd3Mra0PL0Cn39ekbOGkRl5MyqIpDiobynBm3r60fPs7qOs670QTBn8Q8MK7vHvKoVvBvTwsGcj3xkMWTkIfOIGxvn9B6QWrP_e2t34FxyLaFa_Y2a-TYnn5Z6q1rcTxJDuwRefLeOf6jeR7pfcA1fsfbUwmjRmXpD35Qri39fUh9BwAriVZqH6_2fA7HFAGKawEgtHRGPWQfhygjdpEfg7srsFBcmo0Tq-4QN_sfW80Av_JTYSEJ4NN8js7v2kmtCP3KfUDhENkk_zPk-fCC1JJnFDOw4eAacIzHawKcAG84Pl29JoPzvWxAxPsd2DtD6oP2K2tzVvail8tUWb0GXlvjYQcSm9gUV_TIZ7CulYXBOfsrDNqG_XEQMKqTjGj14kuJsyC5vtNaOJNR07_KuHgAtyE4DUhdvbw1_DEzggm8kI
```

Contoh Respon Gagal


Contoh Respon Berhasil
```sh

  [
    "Menghapus Crud  sukses"
]

```



