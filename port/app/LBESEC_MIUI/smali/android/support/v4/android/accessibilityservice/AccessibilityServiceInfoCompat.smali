.class public Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;


# static fields
.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field private static final IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;

    invoke-direct {v0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "FEEDBACK_AUDIBLE"

    goto :goto_0

    :sswitch_1
    const-string v0, "FEEDBACK_HAPTIC"

    goto :goto_0

    :sswitch_2
    const-string v0, "FEEDBACK_GENERIC"

    goto :goto_0

    :sswitch_3
    const-string v0, "FEEDBACK_SPOKEN"

    goto :goto_0

    :sswitch_4
    const-string v0, "FEEDBACK_VISUAL"

    goto :goto_0

    :sswitch_5
    const-string v0, "FEEDBACK_ALL"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DEFAULT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    sget-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/android/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
