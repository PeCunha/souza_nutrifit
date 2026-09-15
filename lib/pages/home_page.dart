import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../widgets/logo_widget.dart';
import '../widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),

              const LogoWidget(),

              const SizedBox(height: 24),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'blob:https://gemini.google.com/791b9b7a-a888-4e5a-a6b2-50982e7fb3aa',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      height: 200,
                      color: Colors.grey[200],
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Alimentação inteligente, resultados reais para o seu estilo de vida.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textDark,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 32),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'O que oferecemos',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDark,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const ServiceCard(
                icon: Icons.medical_services_outlined,
                title: 'Consulta Nutricional',
                description: 'Atendimento individualizado focado nas suas metas de saúde.',
              ),
              const ServiceCard(
                icon: Icons.restaurant_menu_outlined,
                title: 'Plano Alimentar Personalizado',
                description: 'Cardápios adaptados à sua rotina, preferências e objetivos.',
              ),
              const ServiceCard(
                icon: Icons.calendar_today_outlined,
                title: 'Acompanhamento Semanal',
                description: 'Suporte contínuo para manter o foco e ajustar metas.',
              ),
              const ServiceCard(
                icon: Icons.monitor_weight_outlined,
                title: 'Bioimpedância',
                description: 'Análise detalhada de composição corporal e gordura.',
              ),
              const ServiceCard(
                icon: Icons.menu_book_outlined,
                title: 'Receitas Fit',
                description: 'Opções práticas, saborosas e nutricionalmente equilibradas.',
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Começar Minha Jornada',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}