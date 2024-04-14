.class final Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidAirtable;->RowWithOffset(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/List;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

.field private synthetic nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidAirtable;ILjava/util/List;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$3;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidAirtable;->GotRow(ILjava/util/List;)V

    return-void
.end method
