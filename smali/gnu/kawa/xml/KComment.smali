.class public Lgnu/kawa/xml/KComment;
.super Lgnu/kawa/xml/KCharacterData;
.source "KComment.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KCharacterData;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/KComment;
    .locals 3

    .line 31
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lgnu/xml/NodeTree;->writeComment(Ljava/lang/String;II)V

    .line 33
    new-instance p0, Lgnu/kawa/xml/KComment;

    invoke-direct {p0, v0, v2}, Lgnu/kawa/xml/KComment;-><init>(Lgnu/xml/NodeTree;I)V

    return-object p0
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
