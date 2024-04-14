.class public Lgnu/kawa/reflect/FieldLocation;
.super Lgnu/kawa/reflect/ClassMemberLocation;
.source "FieldLocation.java"


# static fields
.field static final CONSTANT:I = 0x4

.field static final INDIRECT_LOCATION:I = 0x2

.field public static final KIND_FLAGS_SET:I = 0x40

.field public static final PROCEDURE:I = 0x10

.field static final SETUP_DONE:I = 0x1

.field public static final SYNTAX:I = 0x20

.field static final VALUE_SET:I = 0x8


# instance fields
.field decl:Lgnu/expr/Declaration;

.field private flags:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 129
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method private getFieldValue()Ljava/lang/Object;
    .locals 2

    .line 233
    invoke-super {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->rfield:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 240
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static make(Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/kawa/reflect/FieldLocation;
    .locals 3

    .line 360
    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 361
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 362
    new-instance v2, Lgnu/kawa/reflect/FieldLocation;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, p1}, Lgnu/kawa/reflect/FieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    return-object v2
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/FieldLocation;
    .locals 1

    .line 370
    new-instance v0, Lgnu/kawa/reflect/FieldLocation;

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    return-object v1

    .line 206
    :cond_0
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 209
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 211
    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 212
    :cond_1
    iput-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 215
    :cond_2
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 217
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 218
    check-cast v1, Lgnu/mapping/Location;

    .line 219
    invoke-virtual {v1, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object p1

    .line 222
    :cond_3
    invoke-virtual {v1}, Lgnu/mapping/Location;->isConstant()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 224
    iget p1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 225
    iput-object v2, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    :cond_4
    move-object v1, v2

    :cond_5
    return-object v1

    :catchall_0
    return-object p1
.end method

.method public declared-synchronized getDeclaration()Lgnu/expr/Declaration;
    .locals 3

    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 152
    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;

    if-nez v0, :cond_5

    .line 155
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 159
    monitor-exit p0

    return-object v0

    .line 160
    :cond_1
    :try_start_1
    invoke-static {v1}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 164
    iget-object v2, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 169
    iput-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;

    move-object v0, v1

    goto :goto_2

    .line 168
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no field found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFType()Lgnu/bytecode/Type;
    .locals 2

    .line 145
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lgnu/bytecode/Field;
    .locals 2

    .line 139
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 334
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 336
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_3

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    .line 352
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 353
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 355
    :goto_0
    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public isConstant()Z
    .locals 2

    .line 304
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 306
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->isIndirectLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 311
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_0

    .line 317
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 325
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 327
    :goto_0
    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    return v0

    :catchall_0
    :cond_3
    return v1
.end method

.method public isIndirectLocation()Z
    .locals 1

    .line 39
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProcedureOrSyntax()Z
    .locals 1

    .line 111
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 113
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setup()V

    .line 247
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->rfield:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 255
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 262
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x8

    .line 265
    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 266
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    .line 267
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 269
    :goto_0
    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setDeclaration(Lgnu/expr/Declaration;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;

    return-void
.end method

.method setKindFlags()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    .line 56
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 57
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget v2, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    :cond_0
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 61
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 63
    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 64
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 66
    :cond_1
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_8

    check-cast v0, Lgnu/bytecode/ClassType;

    const-string v1, "kawa.lang.Syntax"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Location;

    .line 73
    instance-of v1, v0, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v1, :cond_5

    .line 75
    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    .line 76
    iget v1, v0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3

    .line 77
    invoke-virtual {v0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 78
    :cond_3
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    iget v2, v0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v2, v2, 0x34

    or-int/2addr v1, v2

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 79
    iget v2, v0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8

    .line 83
    iget-object v0, v0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    or-int/lit8 v0, v1, 0x8

    .line 84
    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    goto :goto_0

    .line 89
    :cond_4
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    or-int/lit8 v0, v1, 0x8

    .line 90
    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_6

    .line 98
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 99
    :cond_6
    instance-of v1, v0, Lkawa/lang/Syntax;

    if-eqz v1, :cond_7

    .line 100
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 101
    :cond_7
    iget v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v1, v1, 0xc

    iput v1, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 102
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 106
    :cond_8
    :goto_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    return-void
.end method

.method public setProcedure()V
    .locals 1

    .line 43
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x54

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    return-void
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 1

    .line 296
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Lgnu/kawa/reflect/ClassMemberLocation;->setRestore(Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSyntax()V
    .locals 1

    .line 48
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x64

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 275
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 277
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 278
    invoke-super {p0, p1}, Lgnu/kawa/reflect/ClassMemberLocation;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 283
    iget-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    or-int/lit8 v0, v0, 0x8

    .line 286
    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 287
    invoke-direct {p0}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    .line 288
    iput-object v0, p0, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 290
    :goto_0
    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method setup()V
    .locals 1

    .line 176
    monitor-enter p0

    .line 178
    :try_start_0
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 179
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    invoke-super {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 181
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 183
    :cond_1
    iget v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FieldLocation["

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    :cond_0
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_1

    const-string v1, "(null)"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    iget-object v1, p0, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
