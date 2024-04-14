.class public abstract Lgnu/kawa/xml/KCharacterData;
.super Lgnu/kawa/xml/KNode;
.source "KCharacterData.java"

# interfaces
.implements Lorg/w3c/dom/CharacterData;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 52
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "appendData not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public deleteData(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, ""

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KCharacterData;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    iget-object v1, p0, Lgnu/kawa/xml/KCharacterData;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 25
    iget v2, p0, Lgnu/kawa/xml/KCharacterData;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    return-void
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 68
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string p3, "replaceData not supported"

    invoke-direct {p1, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 37
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setData not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lgnu/kawa/xml/KCharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v1, p1, p2

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x1

    const-string v0, "invalid index to substringData"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
