.class Lcom/android/monitor/UidDetailActivity$5;
.super Ljava/lang/Object;
.source "UidDetailActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/UidDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 161
    invoke-static {}, Lcom/android/monitor/UidDetailActivity;->access$200()Lcom/android/monitor/net/UidInfo;

    move-result-object v2

    iget v1, v2, Lcom/android/monitor/net/UidInfo;->mUid:I

    .line 162
    .local v1, uid:I
    if-nez p2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v2}, Lcom/android/monitor/UidDetailActivity;->access$400(Lcom/android/monitor/UidDetailActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/monitor/net/TrafficService;->setAppRestrictBackground(IZ)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v2}, Lcom/android/monitor/UidDetailActivity;->access$400(Lcom/android/monitor/UidDetailActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/monitor/net/TrafficService;->getAppRestrictBackground(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050036

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    const v3, 0x7f050038

    invoke-virtual {v2, v3}, Lcom/android/monitor/UidDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v2, 0x104000a

    new-instance v3, Lcom/android/monitor/UidDetailActivity$5$1;

    invoke-direct {v3, p0, v1}, Lcom/android/monitor/UidDetailActivity$5$1;-><init>(Lcom/android/monitor/UidDetailActivity$5;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/monitor/UidDetailActivity$5$2;

    invoke-direct {v3, p0}, Lcom/android/monitor/UidDetailActivity$5$2;-><init>(Lcom/android/monitor/UidDetailActivity$5;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
