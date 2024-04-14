.class public Lorg/jose4j/jwx/CompactSerializer;
.super Ljava/lang/Object;
.source "CompactSerializer.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final PERIOD_SEPARATOR:Ljava/lang/String; = "."

.field private static final PERIOD_SEPARATOR_REGEX:Ljava/lang/String; = "\\."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "\\."

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    array-length p0, v0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 35
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length v0, v0

    const-string v1, ""

    aput-object v1, p0, v0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static varargs serialize([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 46
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 48
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const-string v2, ""

    .line 49
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, "."

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
