.class public Lkawa/lang/SyntaxForms;
.super Ljava/lang/Object;
.source "SyntaxForms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lang/SyntaxForms$PairSyntaxForm;,
        Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    }
.end annotation


# static fields
.field public static final DEBUGGING:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeIdentifierEquals(Lkawa/lang/SyntaxForm;Lkawa/lang/SyntaxForm;)Z
    .locals 3

    .line 47
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 48
    iget-object v1, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p0

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p1

    invoke-static {p0, p1}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    .line 69
    :cond_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_1

    .line 70
    check-cast p0, Lkawa/lang/SyntaxForm;

    return-object p0

    .line 72
    :cond_1
    invoke-static {p0, p1}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isIdentifier(Lkawa/lang/SyntaxForm;)Z
    .locals 0

    .line 53
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lgnu/mapping/Symbol;

    return p0
.end method

.method public static makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 1

    .line 17
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lkawa/lang/SyntaxForms$PairSyntaxForm;

    check-cast p0, Lgnu/lists/Pair;

    invoke-direct {v0, p0, p1}, Lkawa/lang/SyntaxForms$PairSyntaxForm;-><init>(Lgnu/lists/Pair;Lkawa/lang/TemplateScope;)V

    return-object v0

    .line 19
    :cond_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_1

    return-object p0

    .line 21
    :cond_1
    new-instance v0, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;

    invoke-direct {v0, p0, p1}, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;-><init>(Ljava/lang/Object;Lkawa/lang/TemplateScope;)V

    return-object v0
.end method

.method public static makeWithTemplate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lkawa/lang/SyntaxForm;

    return-object p1

    .line 35
    :cond_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_2

    .line 37
    check-cast p0, Lkawa/lang/SyntaxForm;

    .line 38
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 40
    :cond_1
    invoke-static {p1, p0}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1

    .line 77
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 78
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteBody(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1

    .line 83
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 84
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#<syntax"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v1, 0x23

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p1, 0x20

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, " in null"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " in #"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget p0, p0, Lkawa/lang/TemplateScope;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, ">"

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
