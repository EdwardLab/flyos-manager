.class public Lgnu/kawa/reflect/ArrayLength;
.super Lgnu/mapping/Procedure1;
.source "ArrayLength.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    .line 15
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.reflect.CompileArrays:validateArrayLength"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/reflect/ArrayLength;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v0, "*gnu.kawa.reflect.CompileArrays:getForArrayLength"

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public isSideEffectFree()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/Type;

    iput-object p1, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
