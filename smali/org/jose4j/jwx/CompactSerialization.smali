.class public Lorg/jose4j/jwx/CompactSerialization;
.super Ljava/lang/Object;
.source "CompactSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs serialize([Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
