.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
        Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
    }
.end annotation


# static fields
.field public static final HASH_ALGORITHM_INDEX:I = 0x0

.field public static final HASH_SECTIONS:I = 0x5

.field public static final HASH_SIZE_INDEX:I = 0x2

.field public static final ITERATION_INDEX:I = 0x1

.field public static final PBKDF2_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF2_INDEX:I = 0x4

.field public static final SALT_INDEX:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHash(Ljava/lang/String;III)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->createHash([CIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createHash([CIII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    new-array p2, p2, [B

    .line 63
    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 66
    invoke-static {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B

    move-result-object p0

    .line 67
    array-length p3, p0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sha1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-static {p2}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    invoke-static {p0}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([B[B)Z
    .locals 5

    .line 160
    array-length v0, p0

    array-length v1, p1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 161
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 162
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    const-string v0, "MakeroidCrypt"

    const/4 v1, 0x0

    .line 170
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    shl-int/lit8 p3, p3, 0x3

    invoke-direct {v2, p0, p1, p2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p0, "PBKDF2WithHmacSHA1"

    .line 171
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [B

    return-object p0

    :catch_1
    move-exception p0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [B

    return-object p0
.end method

.method public static verifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->verifyPassword([CLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static verifyPassword([CLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
        }
    .end annotation

    const-string v0, "MakeroidCrypt"

    const-string v1, ":"

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 91
    array-length v1, p1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 98
    aget-object v2, p1, v1

    const-string v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 106
    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v2, :cond_1

    const/4 v3, 0x3

    .line 121
    :try_start_1
    aget-object v3, p1, v3

    .line 3185
    invoke-static {v3}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x4

    .line 129
    :try_start_2
    aget-object v4, p1, v4

    .line 4185
    invoke-static {v4}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x2

    .line 138
    :try_start_3
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 144
    array-length v0, v4

    if-ne p1, v0, :cond_0

    .line 152
    array-length p1, v4

    invoke-static {p0, v3, v2, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B

    move-result-object p0

    .line 155
    invoke-static {v4, p0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([B[B)Z

    move-result p0

    return p0

    .line 145
    :cond_0
    new-instance p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    const-string p1, "Hash length doesn\'t match stored hash length."

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 113
    :cond_1
    new-instance p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    const-string p1, "Invalid number of iterations. Must be >= 1."

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 99
    :cond_2
    new-instance p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;

    const-string p1, "Unsupported hash type."

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_3
    new-instance p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    const-string p1, "Fields are missing from the password hash."

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
