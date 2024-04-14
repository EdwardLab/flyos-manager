.class Lgnu/kawa/functions/NamedPartSetter;
.super Lgnu/mapping/Setter;
.source "GetNamedPart.java"

# interfaces
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>(Lgnu/kawa/functions/NamedPart;)V
    .locals 1

    .line 279
    invoke-direct {p0, p1}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    .line 280
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.functions.CompileNamedPart:validateNamedPartSetter"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/NamedPartSetter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getGetter()Lgnu/mapping/Procedure;
    .locals 1

    .line 291
    iget-object v0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .line 286
    iget-object v0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/NamedPart;

    iget-char v0, v0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2001

    return v0

    :cond_0
    const/16 v0, -0x1000

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

    .line 301
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/Procedure;

    iput-object p1, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
