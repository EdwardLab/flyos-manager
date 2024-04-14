.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP384UsingSha384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "ES384"

    const-string v1, "SHA384withECDSA"

    const-string v2, "P-384"

    const/16 v3, 0x60

    .line 256
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
