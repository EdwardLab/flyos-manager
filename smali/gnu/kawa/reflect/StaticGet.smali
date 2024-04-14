.class public Lgnu/kawa/reflect/StaticGet;
.super Lgnu/mapping/Procedure0;
.source "StaticGet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;

.field fname:Ljava/lang/String;

.field reflectField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    .line 23
    iput-object p2, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 16
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    .line 17
    iput-object p2, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    return-void
.end method

.method private getField()Lgnu/bytecode/Field;
    .locals 4

    .line 56
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    .line 63
    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 4

    .line 31
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 50
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal access for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lgnu/kawa/reflect/StaticGet;->getField()Lgnu/bytecode/Field;

    .line 69
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 71
    iget-object p1, p0, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 76
    invoke-direct {p0}, Lgnu/kawa/reflect/StaticGet;->getField()Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method
