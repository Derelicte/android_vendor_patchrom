.class final Lcom/lbe/security/ui/su/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/su/SuEnableDialog;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/su/b;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/su/b;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_su_service"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lbe/security/ui/su/b;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-virtual {v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->finish()V

    return-void
.end method
