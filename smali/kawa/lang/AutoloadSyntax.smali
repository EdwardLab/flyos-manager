.class public Lkawa/lang/AutoloadSyntax;
.super Lkawa/lang/Syntax;
.source "AutoloadSyntax.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field className:Ljava/lang/String;

.field env:Lgnu/mapping/Environment;

.field loaded:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkawa/lang/AutoloadSyntax;->env:Lgnu/mapping/Environment;

    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .locals 2

    .line 72
    new-instance v0, Lkawa/lang/GenericError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while autoloading "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method load()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 84
    instance-of v2, v1, Lkawa/lang/Syntax;

    if-eqz v2, :cond_0

    .line 86
    check-cast v1, Lkawa/lang/Syntax;

    iput-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v1}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v1, v0}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "failed to autoload valid syntax object "

    .line 91
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/mapping/WrongArguments; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "type error"

    .line 102
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string v0, "illegal access in class "

    .line 98
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string v0, "failed to instantiate class "

    .line 96
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    const-string v0, "failed to find class "

    .line 94
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/AutoloadSyntax;->setName(Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 124
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Lkawa/lang/GenericError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/mapping/WrongType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lgnu/mapping/WrongType;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p1}, Lkawa/lang/GenericError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 140
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    iput-object v1, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 143
    :try_start_1
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v1, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iput-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw p1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v0, p1, p2, p3}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#<syntax "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    :cond_0
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-eqz v1, :cond_1

    const-string v1, "autoloaded>"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "autoload "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
