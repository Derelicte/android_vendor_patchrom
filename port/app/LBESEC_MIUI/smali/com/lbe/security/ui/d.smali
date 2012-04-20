.class final Lcom/lbe/security/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/PermissionListHIPS;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionListHIPS;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/d;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/d;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->a(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_hips_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lbe/security/ui/d;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-virtual {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->a()V

    return-void
.end method
