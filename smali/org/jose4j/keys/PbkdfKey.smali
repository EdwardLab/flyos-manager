.class public Lorg/jose4j/keys/PbkdfKey;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "PbkdfKey.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "PBKDF2"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "PBKDF2"

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-void
.end method
