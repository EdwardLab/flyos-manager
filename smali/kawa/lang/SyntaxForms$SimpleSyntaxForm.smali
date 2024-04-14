.class Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
.super Ljava/lang/Object;
.source "SyntaxForms.java"

# interfaces
.implements Lkawa/lang/SyntaxForm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lang/SyntaxForms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleSyntaxForm"
.end annotation


# static fields
.field static counter:I


# instance fields
.field private datum:Ljava/lang/Object;

.field id:I

.field private scope:Lkawa/lang/TemplateScope;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkawa/lang/TemplateScope;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget v0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->counter:I

    iput v0, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->id:I

    .line 126
    iput-object p1, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->datum:Ljava/lang/Object;

    .line 127
    iput-object p2, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    return-void
.end method


# virtual methods
.method public getDatum()Ljava/lang/Object;
    .locals 1

    .line 132
    iget-object v0, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->datum:Ljava/lang/Object;

    return-object v0
.end method

.method public getScope()Lkawa/lang/TemplateScope;
    .locals 1

    .line 137
    iget-object v0, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->scope:Lkawa/lang/TemplateScope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget v0, p0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {p0, v0}, Lkawa/lang/SyntaxForms;->toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
