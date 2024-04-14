.class public Lcom/google/appinventor/components/runtime/errors/PermissionException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to complete the operation because the user denied permission: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionNeeded()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    return-object v0
.end method
