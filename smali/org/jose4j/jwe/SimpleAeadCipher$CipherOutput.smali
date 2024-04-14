.class public Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
.super Ljava/lang/Object;
.source "SimpleAeadCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/SimpleAeadCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CipherOutput"
.end annotation


# instance fields
.field private ciphertext:[B

.field private tag:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->ciphertext:[B

    return-object p1
.end method

.method static synthetic access$102(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->tag:[B

    return-object p1
.end method


# virtual methods
.method public getCiphertext()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->ciphertext:[B

    return-object v0
.end method

.method public getTag()[B
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->tag:[B

    return-object v0
.end method
