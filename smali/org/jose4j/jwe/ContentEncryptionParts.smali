.class public Lorg/jose4j/jwe/ContentEncryptionParts;
.super Ljava/lang/Object;
.source "ContentEncryptionParts.java"


# instance fields
.field private authenticationTag:[B

.field private ciphertext:[B

.field private iv:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    .line 30
    iput-object p2, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    .line 31
    iput-object p3, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    return-void
.end method


# virtual methods
.method public getAuthenticationTag()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    return-object v0
.end method

.method public getCiphertext()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    return-object v0
.end method
