.class public Lgnu/kawa/xml/KCDATASection;
.super Lgnu/kawa/xml/KText;
.source "KCDATASection.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KCDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    iget-object v1, p0, Lgnu/kawa/xml/KCDATASection;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 39
    iget v2, p0, Lgnu/kawa/xml/KCDATASection;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
