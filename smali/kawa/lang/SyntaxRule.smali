.class public Lkawa/lang/SyntaxRule;
.super Lkawa/lang/SyntaxTemplate;
.source "SyntaxRule.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field pattern:Lkawa/lang/SyntaxPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkawa/lang/SyntaxTemplate;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2, p3, p4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    .line 31
    iput-object p1, p0, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p2, p3, p4, p5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 22
    iput-object p1, p0, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/SyntaxPattern;

    iput-object v0, p0, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 44
    invoke-super {p0, p1}, Lkawa/lang/SyntaxTemplate;->readExternal(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    invoke-super {p0, p1}, Lkawa/lang/SyntaxTemplate;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method
