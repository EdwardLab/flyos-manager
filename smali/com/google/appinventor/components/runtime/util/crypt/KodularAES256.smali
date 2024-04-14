.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static IwgfES1cdIS4MWzG0ZcJi0aZu6bnPTqO1J6Lch3joHWe8768gpNonHxbl2D4zbWA:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static Y32BqWfeOgj0oQvRmJ9m9e2zU29bRliwner9JMtAtUwBfF75tSr3PcVpECeplsq5:I = 0x10000

.field private static iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String; = "AES"

.field private static qGWPhAhbC1tFmaPVJJBRlTuvq3PUzuXLHqwJdn0xNpZNZK6IOnxu2nEwTjRZ3Ww:I = 0x100

.field private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[B = null

.field private static y8A6VDoYQ5lBKtTotDm9q1cPZXQGUPZcusb9B4eqbcZI56F8pazDuNqgH6kBlR62:Ljava/lang/String; = "PBKDF2WithHmacSHA256"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 72
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/crypt/CryptoPref;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 75
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 77
    sget-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->y8A6VDoYQ5lBKtTotDm9q1cPZXQGUPZcusb9B4eqbcZI56F8pazDuNqgH6kBlR62:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 78
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    sget v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->Y32BqWfeOgj0oQvRmJ9m9e2zU29bRliwner9JMtAtUwBfF75tSr3PcVpECeplsq5:I

    sget v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->qGWPhAhbC1tFmaPVJJBRlTuvq3PUzuXLHqwJdn0xNpZNZK6IOnxu2nEwTjRZ3Ww:I

    invoke-direct {v2, p1, p2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 79
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 80
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->IwgfES1cdIS4MWzG0ZcJi0aZu6bnPTqO1J6Lch3joHWe8768gpNonHxbl2D4zbWA:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 83
    invoke-virtual {p1, v1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while decrypting: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularAES256"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    .line 41
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/crypt/CryptoPref;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 44
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 46
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 48
    sget-object v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->y8A6VDoYQ5lBKtTotDm9q1cPZXQGUPZcusb9B4eqbcZI56F8pazDuNqgH6kBlR62:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 49
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->Y32BqWfeOgj0oQvRmJ9m9e2zU29bRliwner9JMtAtUwBfF75tSr3PcVpECeplsq5:I

    sget v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->qGWPhAhbC1tFmaPVJJBRlTuvq3PUzuXLHqwJdn0xNpZNZK6IOnxu2nEwTjRZ3Ww:I

    invoke-direct {v3, p1, p2, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 50
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 51
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

    invoke-direct {p2, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->IwgfES1cdIS4MWzG0ZcJi0aZu6bnPTqO1J6Lch3joHWe8768gpNonHxbl2D4zbWA:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {p1, v2, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while encrypting: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularAES256"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public static generateKey()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "AES"

    .line 103
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 104
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 105
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularAES256"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method
