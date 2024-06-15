using System;
using System.Collections.Generic;

namespace E_Greetings_Website.Models;

public partial class Template
{
    public int TemplateId { get; set; }

    public string TemplateName { get; set; } = null!;

    public string TemplateCategory { get; set; } = null!;

    public string TemplateContent { get; set; } = null!;
}
