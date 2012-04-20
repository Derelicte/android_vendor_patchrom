.class Lcom/android/monitor/Traffic$3;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    if-nez p2, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/monitor/net/TrafficService;->setRestrictBackground(Z)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$500(Lcom/android/monitor/Traffic;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    iget-object v1, p0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$500(Lcom/android/monitor/Traffic;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050037

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v1, 0x104000a

    new-instance v2, Lcom/android/monitor/Traffic$3$1;

    invoke-direct {v2, p0}, Lcom/android/monitor/Traffic$3$1;-><init>(Lcom/android/monitor/Traffic$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/monitor/Traffic$3$2;

    invoke-direct {v2, p0}, Lcom/android/monitor/Traffic$3$2;-><init>(Lcom/android/monitor/Traffic$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
