.class Lcom/android/contacts/preference/RemoveDuplicateActivity$2;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    check-cast p2, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;->getService()Lcom/android/contacts/preference/RemoveDuplicateService;

    move-result-object v1

    #setter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mService:Lcom/android/contacts/preference/RemoveDuplicateService;
    invoke-static {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$1102(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService;

    .line 467
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mService:Lcom/android/contacts/preference/RemoveDuplicateService;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$1100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/RemoveDuplicateService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateService;->setListener(Lcom/android/contacts/preference/RemoveDuplicateService$Listener;)V

    .line 468
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 472
    return-void
.end method
