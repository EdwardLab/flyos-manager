.class public Lgnu/kawa/reflect/StaticSet;
.super Lgnu/mapping/Procedure1;
.source "StaticSet.java"

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
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 23
    iput-object p2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 16
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 17
    iput-object p2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 31
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 51
    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal access for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 64
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 67
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, p1, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 72
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object p1
.end method
