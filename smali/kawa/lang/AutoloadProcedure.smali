.class public Lkawa/lang/AutoloadProcedure;
.super Lgnu/mapping/Procedure;
.source "AutoloadProcedure.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final classModuleBody:Ljava/lang/Class;


# instance fields
.field className:Ljava/lang/String;

.field language:Lgnu/expr/Language;

.field loaded:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lgnu/expr/ModuleBody;

    sput-object v0, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 69
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while autoloading "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 198
    :cond_0
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v1, v0, Lkawa/lang/AutoloadProcedure;

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "circularity in autoload of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoaded()Lgnu/mapping/Procedure;
    .locals 1

    .line 158
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 160
    :cond_0
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-super {p0, p1, v0}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .line 205
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 207
    :cond_0
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v1, v0, Lgnu/mapping/HasSetter;

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    invoke-super {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    return-object v0
.end method

.method load()V
    .locals 7

    .line 88
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    if-nez v1, :cond_0

    .line 91
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 92
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    .line 94
    instance-of v3, v0, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 98
    :goto_0
    :try_start_0
    iget-object v4, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 99
    sget-object v5, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 101
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v4}, Lgnu/expr/ModuleContext;->searchInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_2

    :try_start_1
    const-string v5, "$instance"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 112
    :catch_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 114
    :goto_1
    invoke-static {v4, v1, v2}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 115
    instance-of v1, v4, Lgnu/expr/ModuleBody;

    if-eqz v1, :cond_2

    .line 116
    check-cast v4, Lgnu/expr/ModuleBody;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V

    .line 119
    :cond_2
    invoke-virtual {v2, v3, v6}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-nez v2, :cond_4

    .line 122
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ModuleBody class - does not define "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    .line 124
    :cond_4
    check-cast v1, Lgnu/mapping/Procedure;

    iput-object v1, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    goto :goto_2

    .line 128
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Procedure;

    iput-object v4, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-ne v4, p0, :cond_6

    const-string v4, "circularity detected"

    .line 130
    invoke-direct {p0, v4}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    if-eqz v0, :cond_8

    .line 135
    :try_start_3
    invoke-virtual {v1}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 138
    :cond_7
    iget-object v1, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3, v6, v1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    nop

    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 145
    :try_start_4
    iget-object v1, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 146
    iget-object v1, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    const-string v0, "illegal access in class "

    .line 153
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    const-string v0, "failed to instantiate class "

    .line 151
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    const-string v0, "failed to find class "

    .line 149
    invoke-direct {p0, v0}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public numArgs()I
    .locals 1

    .line 165
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#<procedure "

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3e

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

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

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/AutoloadProcedure;->setName(Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
