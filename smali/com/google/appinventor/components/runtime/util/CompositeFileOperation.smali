.class public abstract Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FileOperation;",
        "Ljava/lang/Iterable<",
        "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
        ">;"
    }
.end annotation


# instance fields
.field private final DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
            ">;"
        }
    .end annotation
.end field

.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    return-void
.end method


# virtual methods
.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V

    .line 43
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    return-void
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected needsExternalStorage()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    return v0
.end method

.method protected abstract performOperation()V
.end method
