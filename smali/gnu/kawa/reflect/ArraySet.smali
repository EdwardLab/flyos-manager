.class public Lgnu/kawa/reflect/ArraySet;
.super Lgnu/mapping/Procedure3;
.source "ArraySet.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 13
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.reflect.CompileArrays:validateArraySet"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/reflect/ArraySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v0, "*gnu.kawa.reflect.CompileArrays:getForArraySet"

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v0, p3}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 23
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/Type;

    iput-object p1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
