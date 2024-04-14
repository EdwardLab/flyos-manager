.class public abstract Lgnu/kawa/reflect/ClassMemberLocation;
.super Lgnu/mapping/Location;
.source "ClassMemberLocation.java"


# instance fields
.field instance:Ljava/lang/Object;

.field mname:Ljava/lang/String;

.field rfield:Ljava/lang/reflect/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 27
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 32
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-void
.end method

.method public static define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 180
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    .line 181
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    .line 182
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 184
    instance-of v6, v0, Lgnu/mapping/Named;

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move-object v6, v0

    check-cast v6, Lgnu/mapping/Named;

    invoke-interface {v6}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 188
    :goto_1
    instance-of v7, v6, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_2

    .line 189
    check-cast v6, Lgnu/mapping/Symbol;

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    .line 192
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    :goto_2
    const/4 p2, 0x0

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 199
    check-cast v0, Lgnu/mapping/Location;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 204
    invoke-virtual {p3, p1, v0}, Lgnu/expr/Language;->getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_5
    and-int/lit8 p3, v1, 0x8

    if-eqz p3, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-eqz v4, :cond_7

    .line 207
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 209
    :cond_7
    new-instance v0, Lgnu/kawa/reflect/FieldLocation;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 212
    :goto_3
    invoke-virtual {p4, v6, p2, v0}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    return-void
.end method

.method public static defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 221
    array-length v1, v0

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 223
    aget-object v2, v0, v1

    .line 224
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$Prvt$"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "$instance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 228
    invoke-static {p0, v2, v3, p1, p2}, Lgnu/kawa/reflect/ClassMemberLocation;->define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 137
    :cond_0
    :try_start_0
    iget-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 141
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .line 51
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getInstance()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-object v0
.end method

.method public getRClass()Ljava/lang/Class;
    .locals 1

    .line 116
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRField()Ljava/lang/reflect/Field;
    .locals 2

    .line 93
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 100
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstant()Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 167
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setInstance(Ljava/lang/Object;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-void
.end method

.method setup()V
    .locals 5

    .line 56
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbound location  - no field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v2

    :catch_1
    move-exception v1

    .line 65
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbound location - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    throw v2

    :cond_0
    :goto_0
    return-void
.end method
