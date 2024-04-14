.class public Lgnu/kawa/reflect/ArrayGet;
.super Lgnu/mapping/Procedure2;
.source "ArrayGet.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 14
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.reflect.CompileArrays:validateArrayGet"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/reflect/ArrayGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v0, "*gnu.kawa.reflect.CompileArrays:getForArrayGet"

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {p2, p1}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object p1, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

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
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
