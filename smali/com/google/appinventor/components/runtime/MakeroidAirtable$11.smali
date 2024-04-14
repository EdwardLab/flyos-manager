.class final Lcom/google/appinventor/components/runtime/MakeroidAirtable$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidAirtable;->updateRowByNum(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

.field private synthetic nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidAirtable;I)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$11;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$11;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$11;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$11;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidAirtable;->RowUpdated(I)V

    return-void
.end method
