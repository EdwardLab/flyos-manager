.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP521UsingSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "ES512"

    const-string v1, "SHA512withECDSA"

    const-string v2, "P-521"

    const/16 v3, 0x84

    .line 264
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
