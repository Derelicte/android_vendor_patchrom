.class final Lcom/lbe/security/ui/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/PermissionListRoot;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionListRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/al;->a:Lcom/lbe/security/ui/PermissionListRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/al;->a:Lcom/lbe/security/ui/PermissionListRoot;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListRoot;->a(Lcom/lbe/security/ui/PermissionListRoot;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_su_service"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
