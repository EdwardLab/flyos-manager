.class public Lkawa/lang/GetFieldProc;
.super Lgnu/mapping/Procedure1;
.source "GetFieldProc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 21
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object p1

    invoke-static {p1, p2}, Lgnu/bytecode/Field;->searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p1

    iput-object p1, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 26
    iput-object p1, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 27
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    iput-object p1, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, p2}, Lkawa/lang/GetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-void
.end method

.method private getField()Lgnu/bytecode/Field;
    .locals 1

    .line 53
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 46
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal access for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 59
    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 67
    iget-object p1, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 72
    invoke-direct {p0}, Lkawa/lang/GetFieldProc;->getField()Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method
